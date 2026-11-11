.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and sil, al
test dil, bl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
or sil, bl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
or al, -22
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
and dl, -73
and esi, 12
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
