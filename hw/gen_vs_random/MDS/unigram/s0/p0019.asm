.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 561041355
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 54
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
cmovnle rbx, rdi
test al, 91
cmovnbe cx, si
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
test cl, -123
not al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 16
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], cx
and bl, dl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 100
cmovp edi, edi
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
test ax, 6779
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
