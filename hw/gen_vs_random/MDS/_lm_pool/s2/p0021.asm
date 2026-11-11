.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, dx
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
test sil, bl
jmp .bb_0.1
.bb_0.1:
test sil, dl
test al, bl
test sil, -96
test eax, 1287331633
or cl, -36
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and al, 35
xor sil, -14
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
xor bl, -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
