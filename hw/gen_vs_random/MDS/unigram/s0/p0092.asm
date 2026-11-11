.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dil
btr di, dx
test bl, sil
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
btr ecx, 84
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 91
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
btc rdx, 7
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
bt ecx, 60
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
