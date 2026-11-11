.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 678817098
xor bl, -88
or cl, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
xor bl, dl
and bl, 68
or cx, -42
or al, dil
and bl, bl
xor cl, 83
or cl, cl
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
test bl, -14
or al, al
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
