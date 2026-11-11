.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], sil
sub dil, -32
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 42
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 34
mul si
imul cl
sub sil, al
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 83
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 102
cmovnbe ax, cx
or sil, cl
inc ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
