.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx esi, cl
and rsi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rsi]
or eax, ecx
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 63
not ebx
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 39
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 35
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
add ax, 1313
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
