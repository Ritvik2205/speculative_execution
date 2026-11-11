.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
setno dl
add dil, 88
sub dil, -39
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test al, -84
bswap rsi
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
