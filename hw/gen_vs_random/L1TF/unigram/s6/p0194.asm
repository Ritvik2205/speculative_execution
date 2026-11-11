.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl eax, ebx
add dl, -52 # instrumentation
adc cx, 82
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
lea rdx, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rsi]
xchg al, al
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
btr rbx, 14
cmovnbe edi, ecx
inc dil
mov dl, dil
bt rax, rsi
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 61
lea rdi, qword ptr [rbx + rsi + 20302]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
