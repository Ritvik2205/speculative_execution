.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rcx]
add cl, sil
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], -16
test dl, dl
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
movzx bx, sil
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
xor dil, cl
test bl, sil
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
btc di, si
add al, 112 # instrumentation
cmovnle ecx, edx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 22
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
