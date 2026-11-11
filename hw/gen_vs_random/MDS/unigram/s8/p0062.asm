.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
or sil, bl
bts di, ax
test ax, 6779
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
jmp .bb_0.1
.bb_0.1:
and cl, -23 # instrumentation
cmovno eax, ecx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
test dil, -51
cmovnp di, bx
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
bts eax, 222
btc ax, di
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
btc rcx, 73
cmovb dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
