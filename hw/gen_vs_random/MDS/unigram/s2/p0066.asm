.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -46
cmovnbe rdx, rsi
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
cmovnb di, ax
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 16
test eax, 1838539683
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rsi
cmovno rax, rsi
and dl, 37 # instrumentation
cmovnbe cx, ax
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
test di, 24
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
cmovno si, si
cmovz si, si
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
