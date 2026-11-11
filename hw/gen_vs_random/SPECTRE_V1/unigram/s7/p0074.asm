.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp cl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
mov bl, sil
sub bl, dil
lea ax, qword ptr [rax + rdi + 99]
imul dl
test rdx, 1657596343
lea rax, qword ptr [rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or di, 0b1000000000000000 # instrumentation
bsf si, di
setnle bl
cmp ecx, edi
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rdx], si
add bl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
lea ax, qword ptr [rcx + rdi]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
add cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
