.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
lea ebx, qword ptr [rcx + rbx]
cmp rax, -1365488374
and cl, dl
and al, -23
test dl, 113
cmovnl edx, esi
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
test ax, 19339
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
setle dl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
lea cx, qword ptr [rdx]
dec al
jmp .bb_0.2
.bb_0.2:
add al, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
add al, 57 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
