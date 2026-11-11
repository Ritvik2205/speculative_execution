.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, rax
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
and cl, 122 # instrumentation
cmovnb rcx, rsi
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
not si
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
and eax, -2116875023
xor cx, 57
xor ax, 24729
or al, -8
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 92
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
dec dl
and al, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
