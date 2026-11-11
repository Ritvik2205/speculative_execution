.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
cmovnle rdx, rbx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
adc rbx, rdx
add edx, 84
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
lea di, qword ptr [rax + rcx + 92]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdx, -98
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
