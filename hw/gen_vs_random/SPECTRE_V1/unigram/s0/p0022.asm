.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx bx, al
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 63
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
dec bl
xor rbx, 31
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmp dl, sil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 85
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 56
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
cmovo ebx, ebx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
cmovo ecx, ecx
mov dl, dl
lea edi, qword ptr [rsi]
cwd
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
