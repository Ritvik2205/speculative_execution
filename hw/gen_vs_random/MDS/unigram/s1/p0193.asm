.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rcx, rax
bt rdi, 36
cmovnb si, ax
cmovz di, di
and bl, -40 # instrumentation
cmovle di, bx
and rdi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdi]
and ax, cx
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 0
bts rax, rbx
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
and cl, cl
and bl, 38 # instrumentation
cmovno rdx, rsi
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
xor cx, -18
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
bt ebx, 22
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
