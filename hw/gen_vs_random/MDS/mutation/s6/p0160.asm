.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
cmovns eax, edi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
or rbx, -77
cmovnl bx, cx
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
or al, cl
or rax, 52
cmovbe eax, ebx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], -86
bts di, 73
jmp .bb_0.1
.bb_0.1:
xor dl, -19
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rax, 452940266
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
jmp .bb_0.2
.bb_0.2:
or rax, -1561934807
or rcx, -17
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
xor al, 8
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
or cl, cl
cmovns edx, ecx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
btr si, 208
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
xor cl, -13
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
bt edx, esi
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
