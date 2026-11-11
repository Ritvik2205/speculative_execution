.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
test dl, -105
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
not cx
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and dl, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
