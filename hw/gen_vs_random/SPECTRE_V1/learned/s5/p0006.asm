.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
test sil, 97
lea si, qword ptr [rcx + rdx + 72]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 2
cmp dl, dil
add al, 18
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
xchg rbx, rdx
add al, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
