.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
btr si, di
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor al, 115
jmp .bb_0.1
.bb_0.1:
or dil, cl
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or al, 54
not bl
or sil, -78
or eax, -1777347252
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
or sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
