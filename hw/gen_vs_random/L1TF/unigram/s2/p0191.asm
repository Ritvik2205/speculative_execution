.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea esi, qword ptr [rcx + rcx]
sbb ax, -4845
add dil, 88
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
xor cl, 89
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
add al, 112 # instrumentation
cmovnle edi, ecx
xor cl, sil
and rsi, 94
add cl, 6 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -73
cmovnb bx, si
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
cmovnz rbx, rsi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
