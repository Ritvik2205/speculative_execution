.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
test bl, 106
cmovb edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
btc rsi, rbx
cmovb ax, ax
and rax, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rax]
add sil, 48
xor al, -119
and dl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
setl bl
cmovz si, bx
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
or cl, dl
or al, -8
or al, -8
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
or cx, 10
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
