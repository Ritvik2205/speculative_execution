.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
or dl, dl
or dil, dil
or cl, al
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
btc edi, 230
xor rdi, -9
and al, -114
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
test cl, -123
and bl, bl
or sil, -78
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
