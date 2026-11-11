.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
setnz al
lea rsi, qword ptr [rdx]
add bl, 106 # instrumentation
cmovs ecx, eax
add dl, -66 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ebx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, sil
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
adc al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
