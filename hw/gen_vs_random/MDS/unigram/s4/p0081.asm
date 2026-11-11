.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -59
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
xor bl, -27
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
bts ecx, ecx
cmovl rsi, rax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
xor dil, -70
or eax, ecx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
btr edx, esi
bts esi, 82
and bl, dl
cmovnbe rdx, rax
cmovz cx, cx
or di, di
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
