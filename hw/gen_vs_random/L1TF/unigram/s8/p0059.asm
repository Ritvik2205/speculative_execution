.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rdi]
cmovnb si, ax
setno sil
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
or rdx, 11
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rdi
lea ebx, qword ptr [rbx + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
add dl, -121 # instrumentation
movsx cx, dl
add dil, -21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
cmp sil, -11
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
