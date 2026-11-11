.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -128
and al, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 34
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
mov al, 50
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
add sil, 45 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
cmp dl, cl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
lea edi, qword ptr [rcx + rsi]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
