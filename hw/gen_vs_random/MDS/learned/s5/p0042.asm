.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
not bl
xor al, 34
test bl, al
bts rcx, 47
and bl, dil
test sil, -96
test cl, dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
xor rax, -1128378406
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
test al, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or dil, -71
btc si, 43
test sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
