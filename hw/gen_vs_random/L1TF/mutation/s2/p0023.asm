.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
setp dl
movsx ecx, di
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
add al, -46
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 1
add al, 112 # instrumentation
cmovnle edi, ecx
mul esi
test bx, si
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], -62
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add al, -49 # instrumentation
adc al, bl
add si, -5
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -81
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
lea edi, qword ptr [rdi]
or al, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
