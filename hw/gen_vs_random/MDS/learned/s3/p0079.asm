.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
or ebx, edi
or di, -18
or al, al
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
xor edi, -47
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
xor edi, 38
and dl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
or cl, bl
test eax, 758789512
test bl, dl
cmovnb rdi, rdi
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 74
bts bx, dx
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 3
or dl, 22
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
cmovnl rcx, rcx
btc rbx, rax
imul sil
cmovnle eax, edi
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 69
mul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
