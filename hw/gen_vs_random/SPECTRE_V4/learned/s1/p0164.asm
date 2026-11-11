.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, cx
sub al, bl
sub al, 63
add al, -1
or eax, -1341747033
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
or ax, 48
adc al, dil
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
add al, -99
xor ax, 15671
add cl, -62
cmp al, -122
xchg di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
