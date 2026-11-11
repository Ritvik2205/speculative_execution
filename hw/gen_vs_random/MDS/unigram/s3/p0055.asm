.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000000000000000 # instrumentation
bsr di, di
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 89
and dil, -17 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
cmovnle edi, ebx
cmovnbe edi, ecx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and al, -56 # instrumentation
cmovl rdx, rsi
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 53
cmovns eax, esi
and rdi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
xor dl, sil
and dl, 124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rcx]
btr rsi, 73
or dil, dl
xor dil, 66
or bl, bl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
