.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -7
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sub al, dl
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
lea eax, qword ptr [rdx + rdx + 39359]
add eax, -371144449
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
