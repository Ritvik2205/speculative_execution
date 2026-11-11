.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -63 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rcx]
sbb si, bx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdi]
test dl, -37
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
add al, -34 # instrumentation
setnp bl
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
