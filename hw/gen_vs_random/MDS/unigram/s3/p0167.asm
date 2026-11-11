.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edi
btc edi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
xor cl, 15
and rdi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdi]
and rbx, 65
btr ax, cx
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
bts rdx, 200
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
xor rsi, -117
bt eax, 117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
