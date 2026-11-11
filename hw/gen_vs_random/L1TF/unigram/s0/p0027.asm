.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rbx, rax
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
xor bl, -5
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dil
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
cmp bl, bl
lea eax, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
add al, 39 # instrumentation
cmovnb dx, si
sbb dx, cx
and rdx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 57
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
