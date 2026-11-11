.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 65 # instrumentation
cmovnbe ax, dx
xor edx, -13
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and dl, dl
and rax, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
xor rax, -345061362
test cx, di
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
cmovp ebx, ecx
not rax
cmovbe rbx, rax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
not rbx
or eax, 678817098
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
btr eax, 51
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
