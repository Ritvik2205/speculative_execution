.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and dil, -62
bts rax, 77
test bl, -114
bts rcx, 4
and al, 84
not dl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 29
xor bl, dil
test al, 91
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
