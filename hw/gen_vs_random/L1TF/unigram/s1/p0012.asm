.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
lea dx, qword ptr [rdx + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
setp cl
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
bt rsi, rcx
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
cmp bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
