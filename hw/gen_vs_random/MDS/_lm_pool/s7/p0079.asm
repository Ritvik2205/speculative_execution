.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 78
or dil, -71
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
test esi, 1857129931
xor di, -83
xor rdx, -59
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
or dil, 12
test al, 91
and dl, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
test dl, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
