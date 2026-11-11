.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
xor dil, 8
test cl, cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
xor al, cl
test al, bl
xor cx, -18
and dl, -73
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
test dil, cl
test al, 127
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and al, -8
xor al, 8
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
