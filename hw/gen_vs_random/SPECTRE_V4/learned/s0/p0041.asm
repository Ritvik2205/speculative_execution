.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -62
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rax
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
sub esi, ebx
add bl, bl
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
mul rbx
and rax, 68
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ecx, ebx
cmovnbe rax, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
cmovnp ecx, ebx
and bl, cl
xor cl, cl
sbb cl, 20
bt esi, 227
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
