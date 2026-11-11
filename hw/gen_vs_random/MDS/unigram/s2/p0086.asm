.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
btr ax, 64
and bl, -13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and bl, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
or eax, ecx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
xor bl, 2
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
and dl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
or rdx, rbx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 29
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 14
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
or al, -8
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 56
btc di, 94
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
