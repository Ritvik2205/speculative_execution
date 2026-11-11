.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 76
add al, 48 # instrumentation
cmovnz edx, edx
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
setl cl
mov dx, si
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 53
lea rax, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
xor cx, bx
bt di, si
setp dl
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
lea edi, qword ptr [rax + rax]
and dil, al
add al, 55 # instrumentation
lea eax, qword ptr [rcx + rbx + 57]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
