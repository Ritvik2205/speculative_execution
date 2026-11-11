.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
xor rsi, -117
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and cl, cl
test al, 91
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
jmp .bb_0.2
.bb_0.2:
xor al, dil
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
xor al, dl
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
test ax, 6779
xor dx, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
