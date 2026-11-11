.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ecx, 73
btc dx, 146
btc esi, ebx
btc esi, eax
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
and sil, -103 # instrumentation
cmovbe si, si
btr rax, 29
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
xor cl, dl
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 53
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
and bl, 33 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
cmovnb rax, rcx
bt rdx, 61
or rdx, -48
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
cmovl rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
