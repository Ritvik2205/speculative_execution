.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 90
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
bt rbx, rdi
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 33
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], bx
or dl, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
cmovno rax, rsi
xor ecx, 8
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 5
not edi
test cl, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
xor dl, -59
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and cl, 126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
cmovbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
