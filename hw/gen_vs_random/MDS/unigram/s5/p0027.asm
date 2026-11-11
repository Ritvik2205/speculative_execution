.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
test bx, cx
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 40
cmovb rdi, rdx
cmovns ax, di
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
cmovnp rbx, rdi
and dl, 125 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 63
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
or cl, -36
and dil, -24 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
