.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -128
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
setnb cl
xor cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
setnb cl
btc bx, 168
bt ebx, 48
and dl, -98
cmovs ecx, ebx
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 81
lea rax, qword ptr [rcx + rcx + 37]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], bl
sub rax, 788906357
or sil, sil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 23
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
sub cl, 32
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
