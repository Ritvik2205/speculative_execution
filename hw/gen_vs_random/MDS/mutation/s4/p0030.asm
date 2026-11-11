.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 0
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
or si, dx
cmovnp rdx, rcx
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
not ebx
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
cmovnp rbx, rdi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
xor dil, -124
cmovnbe cx, di
and ax, -16061
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test dl, -95
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
cmovnb di, cx
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
and bl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
and cl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
