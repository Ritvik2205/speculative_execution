.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns rdx, rdi
xor bl, 88
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
xchg dx, si
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and al, cl
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], ax
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 40 # instrumentation
lea si, qword ptr [rcx + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 9
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 33
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
mov si, 9258
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
