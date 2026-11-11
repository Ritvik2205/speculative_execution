.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 48
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
btc ecx, eax
and dl, 32
and rsi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rsi]
lea rdi, qword ptr [rdi + rcx + 15]
jmp .bb_0.1
.bb_0.1:
xor bl, bl
test al, al
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 7
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 9
and esi, edi
lea cx, qword ptr [rcx + rsi]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 3
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
