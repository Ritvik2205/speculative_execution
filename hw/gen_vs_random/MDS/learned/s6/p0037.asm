.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
xor rax, 459999114
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 75
and dl, cl
btr dx, cx
jmp .bb_0.1
.bb_0.1:
test al, 66
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 72
xor dil, 81
or al, 74
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and dx, 3
and al, 49
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
test dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
