.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, al
cmovb edi, ecx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
lea rsi, qword ptr [rdx]
lea di, qword ptr [rdi + rax + 15575]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
neg rdi
or sil, 122
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
add sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
