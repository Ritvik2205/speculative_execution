.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
neg cl
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
sbb dl, al
bts ax, 201
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
cmp edi, 69
lea esi, qword ptr [rdi + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
btc eax, ebx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
