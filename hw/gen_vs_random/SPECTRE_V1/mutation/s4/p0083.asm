.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnz cx, di
nop
cmovl esi, edx
inc sil
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
adc al, cl
cmp rax, -1365488374
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -114
sets dil
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
add al, 57 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
add al, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
