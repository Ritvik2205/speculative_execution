.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, cx
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
cmovnb eax, ecx
test sil, 41
not dl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edi
xor dl, 8
and dl, 21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
xor al, 99
and rsi, 49
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], di
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
or al, bl
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
