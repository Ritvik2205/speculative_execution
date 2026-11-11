.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 36
test dil, -80
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 40
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
btc ax, 14
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
or dil, bl
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
not al
xor dil, bl
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
test sil, sil
or edx, -78
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
cmovno rsi, rax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
