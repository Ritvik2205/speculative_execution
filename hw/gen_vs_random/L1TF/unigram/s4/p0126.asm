.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
cmovz esi, ecx
sbb dx, 33
bt cx, ax
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
lea cx, qword ptr [rcx + rdi + 51091]
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
sbb dx, 47
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 39
adc cl, dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rsi]
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
not eax
and rbx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
