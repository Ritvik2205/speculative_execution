.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
test bl, 65
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
test esi, 425331143
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
or bl, dl
xor al, sil
test dil, dil
or al, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or al, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
test eax, -675944960
btr di, cx
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
