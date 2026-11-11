.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 4
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 23
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rdi]
cmp cl, 5
dec si
and sil, 111
add dl, -50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
cmovl rax, rax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
imul edx, edx, 69
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
